import { bindActionCreators } from 'redux'
import { connect } from 'react-redux'

import CyComponent from './component/CyComponent'

import sample, * as sampleActions from './store/sample'

require("./style/component.scss")

function mapStateToProps(state) {
  return {}
}

function mapDispatchToProps(dispatch) {
  return {
    sampleActions: bindActionCreators(sampleActions, dispatch)
  }
}

const component = connect(
    mapStateToProps,
    mapDispatchToProps
  )(CyComponent)

const storeName = 'sample_name'
const store = { sample }

export {
  component,
  storeName,
  store,
  sampleActions
}
