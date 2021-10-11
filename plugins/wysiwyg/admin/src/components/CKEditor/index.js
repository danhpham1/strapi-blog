import React from 'react';
import PropTypes from 'prop-types';
import { CKEditor } from '@ckeditor/ckeditor5-react';
import DecoupledEditor from '@ckeditor/ckeditor5-build-decoupled-document';
import styled from 'styled-components';

const Wrapper = styled.div`
  .ck-editor__main {
    min-height: 200px;
    > div {
      min-height: 200px;
    }
  }
  .ck-editor__editable{
    max-height:600px;
    border:1px solid;
    overflow:auto
  }
`;

const Editor = ({ onChange, name, value }) => {
  return (
    <Wrapper>
      <CKEditor
        editor={DecoupledEditor}
        onReady={(editor) => {
          console.log(editor);
          editor.ui
            .getEditableElement()
            .parentElement.prepend(editor.ui.view.toolbar.element);
            editor.setData(value ? value : "");
        }}
        data={value}
        onChange={(event, editor) => {
          const data = editor.getData();
          onChange({ target: { name, value: data } });
        }}
      />
    </Wrapper>
  );
};

Editor.propTypes = {
  onChange: PropTypes.func.isRequired,
  name: PropTypes.string.isRequired,
  value: PropTypes.string,
};

export default Editor;