'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#lifecycle-hooks)
 * to customize this model
 */

const slugify = require('slugify');

module.exports = {
    lifecycles: {
        beforeCreate: async (data) => {
            if (data.category_name) {
                data.category_slug = slugify(data.category_name,{ replacement: "-", lower: true });
            }
        },
        beforeUpdate: async (params, data) => {
            if (data.category_name) {
                data.category_slug = slugify(data.category_name,{ replacement: "-", lower: true });
            }
        },
    },  
};
