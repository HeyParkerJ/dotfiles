# -*- mode: snippet -*-
# name: react jest test
# key: ut
# --
import { render, act, screen } from '@testing-library/react';
import '@testing-library/jest-dom';

import ${1:`(f-base buffer-file-name)`} from './${1:`(f-base buffer-file-name)`}';

test('renders {1:`(f-base buffer-file-name)`} component', async () => {
  render(<{1:`(f-base buffer-file-name)`} />);

  const result: HTMLElement = (await screen.findByTestId('my-component')) as HTMLElement;

  expect(result).toBeInTheDocument();
});
