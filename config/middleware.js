module.exports = ({ env }) => ({
    settings: {
        cache: {
            enabled: true,
            models: [
                {
                    model: "blogs",
                    routes: [
                        { path: "/:game/blogs", method: "GET" },
                        { path: "/:game/home", method: "GET" },
                        { path: "/:game/blog", method: "GET" },
                    ]
                }
            ],
            logs: true
        },
        cors: {
            enabled: true,
            origin: ['*']
        }
    }
});