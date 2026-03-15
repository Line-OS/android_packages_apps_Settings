.class public Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# instance fields
.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method

.method public static newInstance(Lcom/android/settings/DialogCreatable;I)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    .line 546
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>()V

    .line 552
    invoke-direct {v0, p0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->setParentFragment(Lcom/android/settings/DialogCreatable;)V

    .line 553
    invoke-direct {v0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->setDialogId(I)V

    return-object v0

    .line 547
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fragment argument must be an instance of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Landroidx/fragment/app/Fragment;

    .line 548
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setDialogId(I)V
    .locals 0

    .line 653
    iput p1, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mDialogId:I

    return-void
.end method

.method private setParentFragment(Lcom/android/settings/DialogCreatable;)V
    .locals 0

    .line 649
    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public getDialogId()I
    .locals 0

    .line 632
    iget p0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mDialogId:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 563
    :cond_0
    check-cast v0, Lcom/android/settings/DialogCreatable;

    iget p0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mDialogId:I

    .line 564
    invoke-interface {v0, p0}, Lcom/android/settings/DialogCreatable;->getDialogMetricsCategory(I)I

    move-result p0

    if-lez p0, :cond_1

    return p0

    .line 566
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Dialog must provide a metrics category"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 617
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 618
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    .line 619
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const-string v1, "key_dialog_id"

    .line 592
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mDialogId:I

    .line 593
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, -0x1

    const-string v1, "key_parent_fragment_id"

    .line 594
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 595
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/settings/DialogCreatable;

    if-nez v1, :cond_2

    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_1

    .line 601
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 602
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " must implement "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p0, Lcom/android/settings/DialogCreatable;

    .line 604
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_2
    instance-of p1, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p1, :cond_3

    .line 609
    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->access$202(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 612
    :cond_3
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/android/settings/DialogCreatable;

    iget p0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mDialogId:I

    invoke-interface {p1, p0}, Lcom/android/settings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 2

    .line 637
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 640
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 642
    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsPreferenceFragment;->access$200(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 643
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->access$202(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 625
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 626
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p0, :cond_0

    .line 627
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 573
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 575
    iget v0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mDialogId:I

    const-string v1, "key_dialog_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result p0

    const-string v0, "key_parent_fragment_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 582
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    .line 584
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 585
    check-cast p0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    :cond_0
    return-void
.end method
