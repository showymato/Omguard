// // const lighthouse = require('@lighthouse-web3/sdk');
// // const dotenv = require('dotenv');

// // dotenv.config();

// // const apiKey = process.env.LIGHTHOUSE_API_KEY;

// // async function uploadFile(filePath) {
// //   try {
// //     const uploadResponse = await lighthouse.upload(filePath, apiKey);
// //     console.log(uploadResponse);
// //   } catch (error) {
// //     console.error('Error uploading file:', error);
// //   }
// // }

// // // Change to your actual file path
// // const filePath = 'C:/Users/kh491/Downloads/profile.jpeg'; // Replace with your file path
// // uploadFile(filePath);


// // const status = await lighthouse.dealStatus('bafkreia4ruswe7ghckleh3lmpujo5asrnd7hrtu5r23zjk2robpcoend34');
// // console.log(status);


// const lighthouse = require('@lighthouse-web3/sdk');
// const dotenv = require('dotenv');

// dotenv.config();

// const apiKey = process.env.LIGHTHOUSE_API_KEY;

// async function uploadFile(filePath) {
//   try {
//     const uploadResponse = await lighthouse.upload(filePath, apiKey);
//     console.log('Upload Response:', uploadResponse);
    
//     // Check the status of the upload
//     const status = await lighthouse.dealStatus(uploadResponse.data.Hash);
//     console.log('Upload Status:', status);
    
//   } catch (error) {
//     console.error('Error uploading file:', error);
//   }
// }

// // Change to your actual file path
// const filePath = 'C:/Users/kh491/Downloads/profile.jpeg'; // Replace with your file path
// uploadFile(filePath);



import lighthouse from '@lighthouse-web3/sdk';
import dotenv from 'dotenv';

dotenv.config();

const apiKey = process.env.LIGHTHOUSE_API_KEY;

async function uploadFile(filePath) {
  try {
    const uploadResponse = await lighthouse.upload(filePath, apiKey);
    console.log('Upload Response:', uploadResponse);
    
    // Check the status of the upload
    const status = await lighthouse.dealStatus(uploadResponse.data.Hash);
    console.log('Upload Status:', status);
    
  } catch (error) {
    console.error('Error uploading file:', error);
  }
}

// Change to your actual file path
const filePath = 'C:/Users/kh491/Downloads/profile.jpeg'; // Replace with your file path
uploadFile(filePath);
