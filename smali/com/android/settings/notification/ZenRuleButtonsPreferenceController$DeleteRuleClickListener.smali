.class public Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;
.super Ljava/lang/Object;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteRuleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 100
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$000(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$300(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener$1;-><init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;)V

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;)V

    return-void
.end method
