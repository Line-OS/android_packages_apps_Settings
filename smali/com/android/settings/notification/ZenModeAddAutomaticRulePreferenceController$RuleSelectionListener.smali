.class public Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;
.super Ljava/lang/Object;
.source "ZenModeAddAutomaticRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RuleSelectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;->this$0:Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 77
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iget-object p1, p1, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    .line 78
    invoke-virtual {p2, p0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSystemRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;->this$0:Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->showNameRuleDialog(Lcom/android/settings/notification/ZenRuleInfo;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
