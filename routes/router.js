import express from 'express'
import { getFlags } from '../dbModule.js';


const router = express.Router();

const showFlags = async (req, res) => {
    const flags = await getFlags();
    res.json(flags);
}

router.get('/flag', showFlags);

export default router;