import torch
print('Creating text model...')
from ldm.modules.encoders.modules import _OpenCLIPTextOnly
m = _OpenCLIPTextOnly()
print(f'Success! {sum(p.numel() for p in m.parameters()) / 1e6:.0f}M params')
