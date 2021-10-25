module.exports = ({ env }) => ({
    defaultConnection: 'default',
    connections: {
        default: {
            connector: 'bookshelf',
            settings: {
                client: 'mysql',
                host: env('DATABASE_HOST', 'dbweb1.itap.vn'),
                port: env.int('DATABASE_PORT', 3306),
                database: env('DATABASE_NAME', 'tamquoc_web'),
                username: env('DATABASE_USERNAME', 'itapdbuser'),
                password: env('DATABASE_PASSWORD', 'VL@xyz123link'),
                ssl: env.bool('DATABASE_SSL', false),
            },
            options: {}
        },
    },
});
