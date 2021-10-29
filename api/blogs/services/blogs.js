'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-services)
 * to customize this service
 */

const { sanitizeEntity } = require('strapi-utils');

module.exports = {
    async getBlogsWithParams(params) {
        const results = await strapi.query('blogs').find({ ...params, _sort: 'created_at:desc' });
        return results || null;
    },

    async countBlogsWithParams(params){
        const results = await strapi.query('blogs').count({ ...params });
        return results || null;
    },

    async getHomeData(gameId) {
        if (gameId == 'tantamquoc') {
            const knex = strapi.connections.default;
            const result = await knex
                .from('blogs')
                .join('games', 'blogs.game', '=', 'games.id')
                .join('categories', 'blogs.category', '=', 'categories.id')
                .select('blogs.id', 'title', 'sub_content', 'blogs.created_at', 'slug', 'game_name', 'game_slug', 'category_name', 'category_slug')
                .where('game_slug', gameId)
                .orderBy('created_at', 'desc');
            return result || [];
        }
        return [];
    },

    async getPostDetail(gameId, slug) {
        if (gameId == 'tantamquoc') {
            const knex = strapi.connections.default;
            const results = await knex
                .from('blogs')
                .join('games','games.id','=','blogs.game')
                .select()
                .where('game_slug',gameId)
                .where('slug', slug);
            return results || null;
        }
        return null;
    },

    async transformData(data) {
        let results = {
            tin_tuc: [],
            cam_nang: [],
            su_kien: [],
            huong_dan: []
        }

        data.map(entity => {
            const entitySan = sanitizeEntity(entity, {
                model: strapi.models.blogs,
            });

            if (entitySan.content) {
                delete entitySan.content;
            }

            switch (entitySan.category_slug) {
                case 'tin-tuc':
                    results.tin_tuc.push(entitySan);
                    break;

                case 'cam-nang':
                    results.cam_nang.push(entitySan);
                    break;

                case 'su-kien':
                    results.su_kien.push(entitySan);
                    break;

                case 'huong-dan':
                    results.huong_dan.push(entitySan);
                    break;

                default:
                    break;
            }
        })

        return {
            tin_tuc: results.tin_tuc.slice(0, 4),
            cam_nang: results.cam_nang.slice(0, 4),
            su_kien: results.su_kien.slice(0, 4),
            huong_dan: results.huong_dan.slice(0, 4)
        };
    }
};
