FROM  vllm/vllm-openai:latest
ENV HUGGING_FACE_HUB_TOKEN=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
EXPOSE 8000
CMD ["--host", "0.0.0.0", "--gpu-memory-utilization", "0.95", "--model", "meta-llama/Llama-3.1-8B-Instruct", "--dtype", "bfloat16", "--tensor_parallel_size", "4", "--enforce-eager", "--max-model-len", "8128"]
