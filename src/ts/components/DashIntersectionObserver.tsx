import React from 'react';
import {DashComponentProps} from '../props';

type Props = {
    // Insert props
} & DashComponentProps;

/**
 * Component description
 */
const DashIntersectionObserver = (props: Props) => {
    const { id } = props;
    return (
        <div id={id}>
            {/* Insert code */}
        </div>
    )
}

DashIntersectionObserver.defaultProps = {};

export default DashIntersectionObserver;
