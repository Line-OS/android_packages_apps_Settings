.class public Lcom/android/settings/password/BiometricFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BiometricFragment.java"


# instance fields
.field private mAuthenticating:Z

.field private mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

.field private mBundle:Landroid/os/Bundle;

.field private final mCancelCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mClientExecutor:Ljava/util/concurrent/Executor;

.field private final mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/password/BiometricFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$1;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 84
    new-instance v0, Lcom/android/settings/password/BiometricFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$2;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 95
    new-instance v0, Lcom/android/settings/password/BiometricFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$3;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancelCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/password/BiometricFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/password/BiometricFragment;->cleanup()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/password/BiometricFragment;)Landroid/os/Bundle;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method private cleanup()V
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/settings/password/BiometricFragment;
    .locals 1

    .line 113
    new-instance v0, Lcom/android/settings/password/BiometricFragment;

    invoke-direct {v0}, Lcom/android/settings/password/BiometricFragment;-><init>()V

    .line 114
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/BiometricFragment;->cleanup()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x631

    return p0
.end method

.method isAuthenticating()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 146
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    .line 150
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v2, "title"

    .line 151
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setFromConfirmDeviceCredential()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v2, "subtitle"

    .line 154
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v2, "description"

    .line 155
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v2, "require_confirmation"

    .line 157
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 156
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 164
    iget v2, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x80000

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120465

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120467

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120466

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 186
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    .line 187
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 190
    iput-boolean p1, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    .line 191
    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iget v5, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    iget-object v6, p0, Lcom/android/settings/password/BiometricFragment;->mCancelCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;ILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method

.method public setCallbacks(Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 120
    iput-object p2, p0, Lcom/android/settings/password/BiometricFragment;->mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method public setUser(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    return-void
.end method
