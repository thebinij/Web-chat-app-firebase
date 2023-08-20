import { initializeApp } from "firebase/app";
import { getAuth } from "firebase/auth";
import { getFirestore } from "firebase/firestore";
const firebaseConfig = {
  apiKey: "AIzaSyBPtL5dF5xapTDKb5B5-IlUa9hKsF0EieY",
  authDomain: "web-chat-app-87062.firebaseapp.com",
  projectId: "web-chat-app-87062",
  storageBucket: "web-chat-app-87062.appspot.com",
  messagingSenderId: "738954740207",
  appId: "1:738954740207:web:1b83a5629d041a27edf61a"
};
const app = initializeApp(firebaseConfig);
export const auth = getAuth(app);
export const db = getFirestore(app);