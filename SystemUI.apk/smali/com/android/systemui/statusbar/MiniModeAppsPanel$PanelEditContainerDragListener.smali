.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelEditContainerDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 2171
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2171
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "targetView"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2176
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 2179
    .local v0, action:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v10, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2242
    :cond_0
    :goto_0
    return v8

    .line 2185
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    .line 2186
    .local v6, sourceView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 2190
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-eqz v10, :cond_0

    .line 2195
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2197
    .local v1, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2199
    :pswitch_0
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-ne v10, v11, :cond_0

    move v8, v9

    .line 2204
    goto :goto_0

    :pswitch_1
    move v8, v9

    .line 2212
    goto :goto_0

    .line 2215
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2217
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2220
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v10, v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v10, :cond_2

    .line 2221
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0d0058

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2222
    .local v4, previewIcon:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2223
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v10, v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2224
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v10, v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2228
    .end local v4           #previewIcon:Landroid/widget/ImageView;
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 2229
    .local v3, i:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2230
    .local v5, previewWidth:I
    mul-int v7, v3, v5

    .line 2231
    .local v7, xOffsetAtLeft:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;
    invoke-static {v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/HorizontalScrollView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v5

    div-int/lit8 v2, v10, 0x2

    .line 2233
    .local v2, centerX:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;
    invoke-static {v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/HorizontalScrollView;

    move-result-object v10

    sub-int v11, v7, v2

    invoke-virtual {v10, v11, v8}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 2235
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 2236
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    move v8, v9

    .line 2237
    goto/16 :goto_0

    .line 2197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
