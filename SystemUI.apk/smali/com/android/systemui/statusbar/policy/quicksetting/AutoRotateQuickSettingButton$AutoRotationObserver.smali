.class Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;
.super Landroid/database/ContentObserver;
.source "AutoRotateQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRotationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getAutoRotation()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;Z)Z

    .line 58
    const-string v0, "STATUSBAR-AutoRotateQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation onChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setActivateStatus(I)V

    .line 61
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
