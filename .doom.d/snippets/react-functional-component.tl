# -*- mode: snippet -*-
# name: React#prkr-functionComponent
# key: fc
# --
import React from 'react';
import PropTypes from 'prop-types';

interface ${1:Component}Props {
  callbackFn: () => void;
}

const ${1:Component} = ({ callbackFn }: ${1:Component}Props) => {
  return <button onClick={callbackFn} />
};

export default ${1:Component};
