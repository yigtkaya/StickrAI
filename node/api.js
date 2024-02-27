import Replicate from "replicate";

const replicate = new Replicate({
    auth: process.env.REPLICATE_API_TOKEN,
});

const output = await replicate.run(
    "fofr/sticker-maker:58a7099052ed9928ee6a65559caa790bfa8909841261ef588686660189eb9dc8",
    {
        input: {
            steps: 20,
            width: 1024,
            height: 1024,
            prompt: "a cute cat",
            upscale: true,
            upscale_steps: 10,
            negative_prompt: ""
        }
    }
);
console.log(output);