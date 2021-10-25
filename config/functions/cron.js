'use strict';

/**
 * Cron config that gives you an opportunity
 * to run scheduled jobs.
 *
 * The cron format consists of:
 * [SECOND (optional)] [MINUTE] [HOUR] [DAY OF MONTH] [MONTH OF YEAR] [DAY OF WEEK]
 *
 * See more details here: https://strapi.io/documentation/developer-docs/latest/setup-deployment-guides/configurations.html#cron-tasks
 */

module.exports = {
  /**
   * Simple example.
   * Every monday at 1am.
   */
  '* * 1 * * *': async () => {
    const draftArticleToPublish = await strapi.api.blogs.services.blogs.find({
      _publicationState: 'preview', // preview returns both draft and published entries
      published_at_null: true,      // so we add another condition here to filter entries that have not been published
      publish_at_lt: new Date(),
    });

    // update published_at of articles
    await Promise.all(draftArticleToPublish.map(blog => {
      return strapi.api.blogs.services.blogs.update(
        { id: blog.id },
        { published_at: new Date() }
      );
    }));
  },
};
