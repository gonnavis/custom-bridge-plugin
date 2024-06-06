import { registerPlugin } from '@capacitor/core';

import type { CustomBridgePluginPlugin } from './definitions';

const CustomBridgePlugin = registerPlugin<CustomBridgePluginPlugin>('CustomBridgePlugin', {
  web: () => import('./web').then(m => new m.CustomBridgePluginWeb()),
});

export * from './definitions';
export { CustomBridgePlugin };
