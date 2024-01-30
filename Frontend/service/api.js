
let Api = {

    async request(endpoint, method = "get", data = null) {
        try {
            const options = {
                method,
                headers: {
                    'Content-Type': 'application/json'
                }
            };

            if (data) {
                options.body = JSON.stringify(data);
            }

            const response = await fetch(endpoint, options);
                console.log(response);
            return await response.json();
        } catch (error) {
            console.log(error)
            throw error;
        }
    }

};

let ApiGet = {
    async request(endpoint, method = "get", data = null) {
        try {
            const options = {
                method,
                headers: {
                    'Content-Type': 'application/json'
                }
            };

            if (data && method !== 'GET' && method !== 'HEAD') {
                options.body = JSON.stringify(data);
            }

            const response = await fetch(endpoint, options);
            console.log(response);
            return await response.json();
        } catch (error) {
            console.log(error)
            throw error;
        }
    }
};

let ApiFormData = {
    async request(endpoint, method = "get", data = null) {
        try {
            const options = {
                method
            };

            // Check if the data is an instance of FormData
            if (data instanceof FormData) {
                // For FormData, don't set Content-Type header
                options.body = data;
            } else {
                // For JSON data
                options.headers = { 'Content-Type': 'application/json' };
                options.body = JSON.stringify(data);
            }

            const response = await fetch(endpoint, options);
            console.log(response);
            return await response.json();
        } catch (error) {
            console.log(error);
            throw error;
        }
    }
};
