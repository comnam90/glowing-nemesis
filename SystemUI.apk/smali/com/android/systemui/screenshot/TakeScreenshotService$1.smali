.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 39
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 41
    :pswitch_0
    const-string v3, "TakeScreenshotService"

    const-string v6, "Power key + Volume down"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 43
    .local v0, callback:Landroid/os/Messenger;
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v3

    if-nez v3, :cond_0

    .line 44
    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v6, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v3, v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$002(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 46
    :cond_0
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_1

    move v3, v4

    :goto_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_2

    :goto_2
    invoke-virtual {v6, v7, v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    .line 58
    .end local v0           #callback:Landroid/os/Messenger;
    :pswitch_1
    const-string v3, "TakeScreenshotService"

    const-string v4, "Palm Sweep from Left to Right"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 60
    .local v1, callbackLTR:Landroid/os/Messenger;
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v3

    if-nez v3, :cond_3

    .line 61
    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v4, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$002(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 63
    :cond_3
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/TakeScreenshotService;->mLeftToRight:I
    invoke-static {v5}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100(Lcom/android/systemui/screenshot/TakeScreenshotService;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 75
    .end local v1           #callbackLTR:Landroid/os/Messenger;
    :pswitch_2
    const-string v3, "TakeScreenshotService"

    const-string v4, "Palm Sweep from Right to Left"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 77
    .local v2, callbackRTL:Landroid/os/Messenger;
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v3

    if-nez v3, :cond_4

    .line 78
    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v4, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$002(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 80
    :cond_4
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/screenshot/TakeScreenshotService$1$3;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$3;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    #getter for: Lcom/android/systemui/screenshot/TakeScreenshotService;->mRightToLeft:I
    invoke-static {v5}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200(Lcom/android/systemui/screenshot/TakeScreenshotService;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
