const lighthouse = require('@lighthouse-web3/sdk');
const dotenv = require('dotenv');

dotenv.config();

const apiKey = process.env.LIGHTHOUSE_API_KEY;

async function checkDealStatus(dealId) {
    try {
        const status = await lighthouse.dealStatus(dealId);
        console.log('Deal Status:', status);
    } catch (error) {
        console.error('Error checking deal status:', error);
    }
}

// Replace this with your actual deal ID (the string after "bafkreia...").
const dealId = 'bafkreia4ruswe7ghckleh3lmpujo5asrnd7hrtu5r23zjk2robpcoend34'; 
checkDealStatus(dealId);
