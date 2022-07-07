<script lang="ts">
    import GridView from "./lib/GridView.svelte";
    import type { CommandEntry } from "./types";
    const myCommandEntries: CommandEntry[] = [
        {
            command: "notify-send hello world",
            description: "Notify hello",
            key: "n",
        },
    ];
</script>

<div>
    <GridView commandEntries={myCommandEntries} />
</div>
