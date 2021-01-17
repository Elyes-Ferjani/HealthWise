module.exports = {
    randomString(){
        let string = '';
        const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        for(let i = 0; i<characters.length; i++){
            string += characters.charAt(Math.floor(Math.random() * characters.length));
        }
        return string;
    }
}