# -*- mode: snippet -*-
# name: react:jest-test
# key: ut
# --
import { render, act, screen } from '@testing-library/react';
import '@testing-library/jest-dom';

import ${1:Component} from './${1:Component}';

test('renders {1:Component} component', async () => {
  render(<{1:Component} />);

  const result: HTMLElement = (await screen.findByTestId('my-component')) as HTMLElement;

  expect(result).toBeInTheDocument();
});