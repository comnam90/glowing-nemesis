.class Lcom/android/systemui/recent/RecentsVerticalScrollView$9;
.super Ljava/lang/Object;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsVerticalScrollView;->onVisibilityChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$9;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$9;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    #calls: Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->access$300(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    .line 378
    return-void
.end method
