import React from 'react';
import {DashComponentProps} from '../props';
import {useInView} from "react-intersection-observer"

type Props = {
    children: React.ReactNode,
    /**
     * Number between 0 and 1 indicating the percentage that should be visible before triggering.
     */
    threshold?: number,
    /**
     * Minimum delay between notifications, in milliseconds
     */
    delay?: number,
    /**
     * Margin around the root. Can have values similar to the CSS margin property.
     */
    rootMargin?: string,
    /**
     * Only trigger the inView callback once if true.
     */
    triggerOnce?: boolean,
    /**
     * Set the initial value of the inView boolean.
     */
    initialInView?: boolean,
    /**
     * Style of the wrapping div.
     */
    style?: any,
    /**
     * CSS class of the wrapping div.
     */
    className?: string
    /**
     * Whether the component is in the viewport (READONLY).
     */
    inView?: boolean
} & DashComponentProps;

/**
 * Component description
 */
const DashIntersectionObserver = (props: Props) => {

    const { children, style, className, id, setProps, ...inViewProps } = props

    const { ref, inView } = useInView(inViewProps)

    React.useEffect(() => {
        setProps({ inView })
    }, [inView])

    return (
        <div id={id} ref={ref} style={style} className={className}>
            {children}
        </div>
    )
}

DashIntersectionObserver.defaultProps = {};

export default DashIntersectionObserver;
