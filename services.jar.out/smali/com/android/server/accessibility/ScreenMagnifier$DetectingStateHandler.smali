.class final Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetectingStateHandler"
.end annotation


# static fields
.field private static final ACTION_TAP_COUNT:I = 0x3

.field private static final MESSAGE_ON_ACTION_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private mLastTapUpEvent:Landroid/view/MotionEvent;

.field private mTapCount:I

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 1

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2, "x1"    # Lcom/android/server/accessibility/ScreenMagnifier$1;

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 631
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTapAndHold(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    return-object v0
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 776
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v0

    .line 778
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-nez v2, :cond_0

    .line 779
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 787
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 782
    .local v1, "tail":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :goto_1
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 783
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v1

    goto :goto_1

    .line 785
    :cond_1
    # setter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2302(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    goto :goto_0
.end method

.method private clearDelayedMotionEvents()V
    .locals 2

    .prologue
    .line 837
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-eqz v1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 839
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 840
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 842
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :cond_0
    return-void
.end method

.method private clearLastDownEvent()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 772
    :cond_0
    return-void
.end method

.method private clearLastTapUpEvent()V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    .line 765
    :cond_0
    return-void
.end method

.method private clearTapDetectionState()V
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    .line 756
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastTapUpEvent()V

    .line 757
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastDownEvent()V

    .line 758
    return-void
.end method

.method private obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offset"    # J

    .prologue
    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 821
    .local v7, "pointerCount":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2400(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 822
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    invoke-static {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2500(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 823
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v7, :cond_0

    .line 824
    aget-object v6, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 825
    aget-object v6, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 823
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 827
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    add-long v2, v10, p2

    .line 828
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    add-long v4, v10, p2

    .line 829
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    return-object v6
.end method

.method private onActionTap(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "up"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    .line 854
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    goto :goto_0
.end method

.method private onActionTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 867
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v1

    # setter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1602(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z

    .line 868
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 870
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    .line 871
    return-void
.end method

.method private sendDelayedMotionEvents()V
    .locals 10

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 793
    .local v0, "delayedEventQueue":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    if-nez v0, :cond_1

    .line 817
    :cond_0
    return-void

    .line 796
    :cond_1
    :goto_0
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 797
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    sub-long v4, v6, v8

    .line 803
    .local v4, "offset":J
    :goto_1
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-eqz v6, :cond_0

    .line 804
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 805
    .local v2, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v2}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 810
    iget-object v6, v2, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;

    move-result-object v1

    .line 811
    .local v1, "event":Landroid/view/MotionEvent;
    iget-object v6, v2, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;

    move-result-object v3

    .line 812
    .local v3, "rawEvent":Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    iget v7, v2, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    invoke-virtual {v6, v1, v3, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 813
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 814
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 815
    invoke-virtual {v2}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->recycle()V

    goto :goto_1
.end method

.method private transitionToDelegatingStateAndClear()V
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    .line 846
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V

    .line 847
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 848
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 750
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearTapDetectionState()V

    .line 751
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearDelayedMotionEvents()V

    .line 752
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 668
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 670
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 745
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 672
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 673
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 675
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto :goto_0

    .line 678
    :cond_1
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2000(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 681
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 683
    .local v1, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 690
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastDownEvent()V

    .line 691
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 685
    :cond_3
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ge v4, v10, :cond_2

    .line 686
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 688
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 694
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 695
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v5, 0x4

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v4, v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    .line 696
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    goto/16 :goto_0

    .line 698
    :cond_4
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 702
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ge v4, v8, :cond_0

    .line 703
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-static {v4, p1, v7}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v2

    .line 705
    .local v2, "distance":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2100(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 706
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 711
    .end local v2    # "distance":D
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    .line 714
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 715
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_5

    .line 716
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 719
    :cond_5
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2200(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2100(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-nez v4, :cond_6

    .line 721
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 724
    :cond_6
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2000(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-nez v4, :cond_7

    .line 726
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 729
    :cond_7
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    .line 733
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ne v4, v10, :cond_8

    .line 734
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 735
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTap(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 738
    :cond_8
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastTapUpEvent()V

    .line 739
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
