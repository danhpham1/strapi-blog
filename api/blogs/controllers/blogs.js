'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */
const { sanitizeEntity } = require('strapi-utils');

module.exports = {
    async blogsWithCategory(ctx){
        let categoryQuery;
        let blogs;

        if(!ctx.params.game){
            return ctx.throw(400, 'Some Error');
        }
        const gameQuery = await strapi.services.games.getGameWithName({
            game_slug:ctx.params.game
        })
        
        if(ctx.query.category){
            categoryQuery = await strapi.services.categories.getCategoryWithName({
                category_slug:ctx.query.category
            })
        }

        if(categoryQuery && categoryQuery.length >= 1){
            blogs = await strapi.services.blogs.getBlogsWithParams({
                category:categoryQuery[0].id,
                game:gameQuery[0].id
            })
        }else{
            blogs = await strapi.services.blogs.getBlogsWithParams({
                game: gameQuery[0].id
            })
        }

        return ctx.send({
            message:"Ok",
            data: blogs.map(blogEntity => {
                const blog = sanitizeEntity(blogEntity, {
                    model: strapi.models.blogs,
                });

                if (blog.category) {
                    blog.category_name = blog.category.category_name;
                    delete blog.category;
                }

                if (blog.game) {
                    blog.game_name = blog.game.game_name;
                    delete blog.game;
                }

                return blog;
            })
        })
    },

    async home(ctx){
        if (!ctx.params.game) {
            return ctx.throw(400, 'Some Error');
        }
        const resultsQuery = await strapi.services.blogs.getHomeData(ctx.params.game);
        
        const resultTransfomrData = await strapi.services.blogs.transformData(resultsQuery);

        ctx.status = 200;

        return ctx.send({ message: "Ok", data: resultTransfomrData});
    },

    async blogWithSlug(ctx){
        if (!ctx.query.slug) {
            return ctx.throw(400, 'Not enough fields');
        }

        const resultQuery = await strapi.services.blogs.getPostDetail(ctx.params.game, ctx.query.slug);

        ctx.status = 200;

        return ctx.send({
            message:"Ok",
            data:resultQuery[0]
        })
    }
};
