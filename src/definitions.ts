export interface CustomBridgePluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
