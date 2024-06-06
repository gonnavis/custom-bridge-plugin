import { WebPlugin } from '@capacitor/core';

import type { CustomBridgePluginPlugin } from './definitions';

export class CustomBridgePluginWeb extends WebPlugin implements CustomBridgePluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
