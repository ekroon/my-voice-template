# my-voice

A Copilot CLI plugin that captures your personal writing style and transforms AI-generated text to sound like you wrote it.

## The Problem

AI-generated text is useful but sounds generic. If you are someone who writes documents, proposals, status updates, or discussion posts, you want the AI to help with the effort, but not lose your identity in the process. This plugin solves that.

## How It Works

1. **Capture your voice**: The agent guides you through writing 5-8 short pieces in your natural style
2. **Build your profile**: It analyzes your samples and generates a voice profile (tone, vocabulary, sentence patterns, things to avoid)
3. **Use it**: From then on, the skill transforms AI output to match your voice, or the agent helps you write full documents in your style

## Structure

```
plugin.json                         # Copilot CLI plugin manifest
agents/
└── my-voice.agent.md               # Full writing session agent
skills/my-voice/
├── SKILL.md                        # Quick voice transformation skill
├── references/
│   └── voice-profile.md            # Your generated style guide
└── writing-samples/                # Your real writing samples
    └── .gitkeep
```

## Installation

### As a Copilot CLI plugin

```bash
copilot plugin install ./my-voice
```

After forking/cloning, install the plugin from your local directory. Then:
- `/agent` → select `my-voice` for dedicated writing sessions
- `/skills list` → verify the `my-voice` skill is loaded

### First run

When you start the agent for the first time, it will detect that the voice profile is empty and switch to capture mode. It will guide you through writing short pieces and then generate your profile.

## Usage

### Dedicated writing session (agent)

```
/agent my-voice
> I need to write a discussion post about improving our deployment process
```

The agent will ask for your rough content, draft it in your voice, and iterate section by section.

### Quick transform (skill)

In any conversation:

```
> Rewrite this in my voice: [paste AI-generated text]
```

The skill activates automatically and transforms the text.

### Adding more samples

Drop new `.md` files into `skills/my-voice/writing-samples/` and ask the agent to re-analyze:

```
/agent my-voice
> I added new writing samples, please re-analyze and update my voice profile
```

## Privacy

After capturing your voice, this repository will contain personal writing samples and a style profile. **Keep your fork/copy private** if you do not want others to replicate your writing style.

## License

MIT
