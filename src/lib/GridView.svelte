<script lang="ts">
    import type { CommandEntry } from "src/types";
    import hotkeys from "hotkeys-js";
    import { Command } from "@tauri-apps/api/shell";

    let c = new Command("notify-send", ["Hello World!"]);
    hotkeys("n", function (event, handler) {
        // Prevent the default refresh event under WINDOWS system
        alert("you pressed F5!");
        c.execute();
    });

    export let commandEntries: CommandEntry[];
</script>

<div>
    {#each commandEntries as entry}
        <div class="border-2">
            {entry.key}
            {entry.description}
        </div>
    {/each}
</div>
