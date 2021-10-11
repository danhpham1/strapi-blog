module.exports = ({ env }) => ({
    host: 'localhost',
    port: 1337,
    admin: {
        auth: {
            secret: env('ADMIN_JWT_SECRET', 'f65c416e2b3b18cf2929b24d9f6451b4'),
        },
    },
});
