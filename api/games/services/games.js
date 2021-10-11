'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-services)
 * to customize this service
 */

module.exports = {
    async getGameWithName(params){
        const results = await strapi.query('games').find({...params});
        return results || null;
    }
};
