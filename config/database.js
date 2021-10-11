module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'mysql',
        host: env('DATABASE_HOST', '127.0.0.1'),
        port: env.int('DATABASE_PORT', 8888),
        database: env('DATABASE_NAME', 'blog_game'),
        username: env('DATABASE_USERNAME', 'root'),
        password: env('DATABASE_PASSWORD', 'abcd123456'),
        ssl: env.bool('DATABASE_SSL', true),
      },
      options: {}
    },
  },
});
