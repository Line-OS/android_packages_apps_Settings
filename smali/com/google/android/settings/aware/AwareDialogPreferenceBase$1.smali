.class Lcom/google/android/settings/aware/AwareDialogPreferenceBase$1;
.super Ljava/lang/Object;
.source "AwareDialogPreferenceBase.java"

# interfaces
.implements Lcom/google/android/settings/aware/AwareHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/aware/AwareDialogPreferenceBase;


# direct methods
.method constructor <init>(Lcom/google/android/settings/aware/AwareDialogPreferenceBase;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase$1;->this$0:Lcom/google/android/settings/aware/AwareDialogPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/net/Uri;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase$1;->this$0:Lcom/google/android/settings/aware/AwareDialogPreferenceBase;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->updatePreference()V

    return-void
.end method
