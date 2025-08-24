{ ... }:

{
    imports = [
        ./roles/home.nix
    ];
  
    # Configure aichat
    xdg.configFile."aichat/config.yaml".text = '' 
        model: ollama:gemma3n:e4b
        keybindings: vi
        function_calling: true
        rag_embedding_model: nomic-embed-text:latest

        clients:
          - type: openai-compatible
            name: ollama
            api_base: http://127.0.0.1:11434/v1
            models:
              - name: llama3.2:3b
                max_input_tokens: 128000
                supports_function_calling: true
              - name: phi4-reasoning:14b
                max_input_tokens: 32000
                supports_function_calling: true
              - name: dolphin3:8b
                max_input_tokens: 128000
                supports_function_calling: true
              - name: smallthinker:3b
                max_input_tokens: 32000
                supports_function_calling: true
              - name: gemma3:4b
                max_input_tokens: 128000
                supports_vision: true
                supports_function_calling: true
              - name: gemma3:12b
                max_input_tokens: 128000
                supports_vision: true
                supports_function_calling: true
              - name: gemma3:27b
                max_input_tokens: 128000
                supports_vision: true
                supports_function_calling: true
              - name: deepcoder:14b
                max_input_tokens: 128000
              - name: qwen3:14b
                max_input_tokens: 40000
                supports_function_calling: true
              - name: nomic-embed-text:latest
                type: embedding
    '';
}
