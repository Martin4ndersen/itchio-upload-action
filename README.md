# itchio-upload-action

A GitHub Action to automate game uploads to [itch.io](https://itch.io) 🚀

The action uses a prebuilt Docker image with [butler](https://itch.io/docs/butler/) to upload your games to itch.io.

1. Retrieve API key from itch.io.
    1. Log in to itch.io.
    2. Go to Profile > Settings > Developer > API keys.
2. Configure GitHub Action
    1. Go to your game's repository > Settings > Secrets and variables > Actions.
    2. Add repository secret named **BUTLER_API_KEY**. This is the API key retrieved in step 1.

## Inputs

| Name | Required | Description |
| - | - | - |
| 

