.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Landroid/widget/FrameLayout;
.source "PhoneStatusBarView.java"


# static fields
.field static final DIM_ANIM_TIME:I = 0x190

.field private static final MARQUEE_DIRECTION_LEFT:I = -0x4

.field private static final MARQUEE_DIRECTION_RIGHT:I = 0x4

.field private static final MARQUEE_RANGE_MAX:I = 0x8

.field private static final MARQUEE_RANGE_MIN:I = -0x8

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarView"


# instance fields
.field mButtonBounds:Landroid/graphics/Rect;

.field mCapturingEvents:Z

.field mEndAlpha:I

.field mEndTime:J

.field mIcons:Landroid/view/ViewGroup;

.field mLeftIcons:Landroid/view/ViewGroup;

.field mNightMode:Z

.field mNotificationIcons:Landroid/view/ViewGroup;

.field mRightIcons:Landroid/view/ViewGroup;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mStartAlpha:I

.field mStartX:I

.field mStartY:I

.field private mStatusBarMarqueeDirection:I

.field private mStatusBarMarqueeRange:I

.field mStatusIcons:Landroid/view/ViewGroup;

.field mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    .line 50
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mButtonBounds:Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeDirection:I

    .line 63
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeRange:I

    .line 73
    return-void
.end method

.method private getViewOffset(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, offset:I
    :goto_0
    if-eq p1, p0, :cond_1

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 149
    .local v1, p:Landroid/view/ViewParent;
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object p1, v1

    .line 150
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 152
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a child of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v1           #p:Landroid/view/ViewParent;
    :cond_1
    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCurAlpha()I

    move-result v0

    .line 132
    .local v0, alpha:I
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 135
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    if-eq v0, v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    .line 138
    :cond_1
    return-void
.end method

.method getCurAlpha()I
    .locals 7

    .prologue
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 110
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 111
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 113
    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x190

    div-long/2addr v3, v5

    long-to-int v3, v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public marqueeStatusBar()V
    .locals 5

    .prologue
    .line 204
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeRange:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeDirection:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeRange:I

    .line 206
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeRange:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 207
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeDirection:I

    .line 212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftIcons:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftIcons:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeDirection:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftIcons:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeDirection:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftIcons:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightIcons:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightIcons:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeDirection:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightIcons:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeDirection:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightIcons:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    .line 226
    return-void

    .line 208
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeRange:I

    const/4 v1, -0x8

    if-gt v0, v1, :cond_0

    .line 209
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarMarqueeDirection:I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 91
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 97
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 99
    .local v0, nightMode:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    if-eq v2, v0, :cond_1

    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCurAlpha()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    .line 102
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x80

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x190

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    .line 106
    :cond_1
    return-void

    .end local v0           #nightMode:Z
    :cond_2
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 79
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 82
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIcons:Landroid/view/ViewGroup;

    .line 83
    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLeftIcons:Landroid/view/ViewGroup;

    .line 84
    const v0, 0x7f0d00d3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRightIcons:Landroid/view/ViewGroup;

    .line 85
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    move v0, v1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 125
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 126
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 194
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 196
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 197
    const/4 v1, 0x1

    .line 199
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 121
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 171
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
