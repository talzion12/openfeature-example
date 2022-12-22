import { OpenFeature } from '@openfeature/js-sdk';
import { FlagdProvider } from '@openfeature/flagd-provider';

OpenFeature.setProvider(new FlagdProvider());