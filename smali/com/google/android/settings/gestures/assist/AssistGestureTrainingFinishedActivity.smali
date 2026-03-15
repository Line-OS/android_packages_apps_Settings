.class public Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;
.super Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;
.source "AssistGestureTrainingFinishedActivity.java"


# instance fields
.field private mAccessibilityAnnounced:Z

.field private mAssistGestureCheck:Landroid/view/View;

.field private mAssistGestureIllustration:Landroid/view/View;

.field private mLayout:Lcom/google/android/setupdesign/GlifLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;-><init>()V

    return-void
.end method

.method private fadeOutCheckAfterDelay()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static synthetic lambda$cab9BEuZdyJuCLtXpXS9-83dg5o(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->onSettingsButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$z1DYzMr0Jle6L1-mW5lDwn_Okmc(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->onNextButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private onNextButtonClicked(Landroid/view/View;)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeDeferredSetup()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeSettingsSuggestion()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeSetup()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeAccidentalTrigger()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->handleDoneAndLaunch()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 77
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->mAssistGestureHelper:Lcom/google/android/settings/gestures/assist/AssistGestureHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->setListener(Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_2
    :goto_1
    return-void
.end method

.method private onSettingsButtonClicked(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->launchAssistGestureSettings()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3e1

    return p0
.end method

.method protected handleGestureDetected()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 109
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 110
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-boolean v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAccessibilityAnnounced:Z

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12002f

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAccessibilityAnnounced:Z

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->fadeOutCheckAfterDelay()V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->fadeIndicators()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const v0, 0x7f0d0040

    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0a025f

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    .line 33
    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->setShouldCheckForNoProgress(Z)V

    .line 37
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 38
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120180

    .line 40
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v2, Lcom/google/android/settings/gestures/assist/-$$Lambda$AssistGestureTrainingFinishedActivity$cab9BEuZdyJuCLtXpXS9-83dg5o;

    invoke-direct {v2, p0}, Lcom/google/android/settings/gestures/assist/-$$Lambda$AssistGestureTrainingFinishedActivity$cab9BEuZdyJuCLtXpXS9-83dg5o;-><init>(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;)V

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 42
    invoke-virtual {v1, p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const p1, 0x7f1301bc

    .line 43
    invoke-virtual {v1, p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 44
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 46
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeDeferredSetup()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeSetup()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    .line 48
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 51
    :cond_1
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1205f5

    .line 53
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v2, Lcom/google/android/settings/gestures/assist/-$$Lambda$AssistGestureTrainingFinishedActivity$z1DYzMr0Jle6L1-mW5lDwn_Okmc;

    invoke-direct {v2, p0}, Lcom/google/android/settings/gestures/assist/-$$Lambda$AssistGestureTrainingFinishedActivity$z1DYzMr0Jle6L1-mW5lDwn_Okmc;-><init>(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;)V

    .line 54
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 v2, 0x5

    .line 55
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const v2, 0x7f1301bb

    .line 56
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 59
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeDeferredSetup()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeSetup()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeSettingsSuggestion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {p1, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeAccidentalTrigger()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f12017c

    .line 65
    invoke-virtual {p1, p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    :goto_0
    const v0, 0x7f120a2b

    .line 61
    invoke-virtual {p1, p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    :cond_5
    :goto_1
    const p1, 0x7f0a0091

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    const p1, 0x7f0a0092

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureIllustration:Landroid/view/View;

    .line 71
    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->fadeOutCheckAfterDelay()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 128
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 131
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureIllustration:Landroid/view/View;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected showMessage(ILjava/lang/String;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->showMessage(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
