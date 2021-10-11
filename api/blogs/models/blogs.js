'use strict';
const slugify = require('slugify');
/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#lifecycle-hooks)
 * to customize this model
 */

module.exports = {
    lifecycles: {
        async beforeCreate(data) {
            if (data.title) {
                data.slug = slugify(data.title, { lower: true });
            }
        },
        async beforeUpdate(params, data) {
            if (data.title) {
                data.slug = slugify(data.title, { lower: true });
            }
        },
    },
};
