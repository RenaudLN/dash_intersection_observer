import React from 'react';
import {DashComponentProps} from '../props';
import {useInView} from "react-intersection-observer"

type Props = {
    children?: React.ReactNode,
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
    /**
     * Number of times the component has been in the viewport.
     */
    inViewCount?: number
} & DashComponentProps;

/**
 * Component description
 */
const DashIntersectionObserver = (props: Props) => {

    const { children, style, className, id, setProps, triggerOnce, inViewCount, ...inViewProps } = props
    const countFromIntersect = React.useRef(0)
    const count = inViewCount || 0

    const { ref, inView } = useInView(inViewProps)

    React.useEffect(() => {
        const newProps = {}
        if (triggerOnce && count < 1) {
            if (inView) {
                newProps["inViewCount"] = count + 1
                if (countFromIntersect.current === count) {
                    newProps["inView"] = true
                } else {
                    newProps["inView"] = String(Math.random())
                }
                countFromIntersect.current = count + 1
            } else {
                newProps["inView"] = false
            }
        }
        if (!triggerOnce) {
            newProps["inView"] = inView
        }
        if (Object.keys(newProps).length > 0) {
            setProps(newProps)
        }
    }, [inView, inViewCount])

    return (
        <div id={id} ref={ref} style={style} className={className}>
            {children}
        </div>
    )
}

DashIntersectionObserver.defaultProps = {};

export default DashIntersectionObserver;
