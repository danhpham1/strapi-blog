'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-services)
 * to customize this service
 */

module.exports = {
    async getCategoryWithName(params){
        const results = await strapi.query('categories').find({...params});
        return results || null;
    }
};
