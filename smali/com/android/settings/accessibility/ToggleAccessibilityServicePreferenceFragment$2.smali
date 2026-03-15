.class Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 2

    const-string p1, "checked"

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 293
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object p2, p2, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 294
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object p2, p2, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 298
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$200(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    :goto_0
    return v0
.end method
