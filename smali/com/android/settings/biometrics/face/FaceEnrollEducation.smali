.class public Lcom/android/settings/biometrics/face/FaceEnrollEducation;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FaceEnrollEducation.java"


# instance fields
.field private mDescriptionText:Landroid/widget/TextView;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mHandler:Landroid/os/Handler;

.field private mIllustrationAccessibility:Landroid/view/View;

.field private mIllustrationNormal:Lcom/google/android/setupdesign/view/IllustrationVideoView;

.field private mNextClicked:Z

.field private mResultIntent:Landroid/content/Intent;

.field private mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

.field private mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/GlifLayout;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationNormal:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mDescriptionText:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e2

    return p0
.end method

.method public synthetic lambda$onCreate$0$FaceEnrollEducation(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setChecked(Z)V

    const/16 p2, 0x8

    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$FaceEnrollEducation(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 219
    iput-object p3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mResultIntent:Landroid/content/Intent;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    if-eq p2, p3, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 223
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00ac

    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const v0, 0x7f120cf5

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mFaceManager:Landroid/hardware/face/FaceManager;

    const p1, 0x7f0a021d

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/view/IllustrationVideoView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationNormal:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    const p1, 0x7f0a021c

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    const p1, 0x7f0a0435

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mDescriptionText:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    const v0, 0x7f1301bc

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120df1

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v2, Lcom/android/settings/biometrics/face/-$$Lambda$N7mjXS72UleD5SviUhN3TiOt1uQ;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$N7mjXS72UleD5SviUhN3TiOt1uQ;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 107
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 v2, 0x7

    .line 108
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 109
    invoke-virtual {v1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 110
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120d04

    .line 115
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v2, Lcom/android/settings/biometrics/face/-$$Lambda$N7mjXS72UleD5SviUhN3TiOt1uQ;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$N7mjXS72UleD5SviUhN3TiOt1uQ;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 116
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 v2, 0x2

    .line 117
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 118
    invoke-virtual {v1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 119
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 123
    :goto_0
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120cf4

    .line 124
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$CVTqY-fzdKGktOatbRnhbQpNkJc;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$CVTqY-fzdKGktOatbRnhbQpNkJc;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 v0, 0x5

    .line 126
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const v0, 0x7f1301bb

    .line 127
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 128
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    const p1, 0x7f0a0008

    .line 141
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 142
    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$Mq_CzR2B1x2fNnOC9sBofQwkMjA;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$Mq_CzR2B1x2fNnOC9sBofQwkMjA;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a047a

    .line 148
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 149
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    new-instance v2, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$upJM5ryct1DGbCtsr7aNLot4Vbo;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$upJM5ryct1DGbCtsr7aNLot4Vbo;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {p1}, Landroid/widget/Button;->callOnClick()Z

    :cond_2
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 2

    .line 188
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-eqz v0, :cond_0

    const-string v1, "hw_auth_token"

    .line 190
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 192
    :cond_0
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    .line 193
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x7f120453

    .line 196
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 201
    :cond_2
    const-class v0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 203
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mResultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    :cond_3
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mNextClicked:Z

    .line 208
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    const-string v1, "accessibility_diversity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 209
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 161
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 163
    invoke-virtual {v2}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v2

    .line 162
    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 213
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStop()V

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mNextClicked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 181
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
