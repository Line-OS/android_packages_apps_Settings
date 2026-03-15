.class public Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;
.super Lcom/google/android/libraries/hats20/model/Question;
.source "QuestionMultipleSelect.java"

# interfaces
.implements Lcom/google/android/libraries/hats20/model/Question$QuestionWithSelectableAnswers;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private answers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ordering:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect$1;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect$1;-><init>()V

    sput-object v0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/model/Question;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->answers:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->ordering:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->answers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->ordering:Ljava/util/ArrayList;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/model/Question;->questionText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/model/Question;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->answers:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->ordering:Ljava/util/ArrayList;

    const-string v0, "question"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/Question;->questionText:Ljava/lang/String;

    const-string v0, "ordering"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/hats20/model/Question;->toEmptyArrayIfNull(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "answers"

    .line 20
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/hats20/model/Question;->toEmptyArrayIfNull(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 21
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 22
    iget-object v3, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->answers:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->ordering:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAnswers()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->answers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public bridge synthetic getAnswers()Ljava/util/List;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->getAnswers()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getOrdering()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->ordering:Ljava/util/ArrayList;

    return-object p0
.end method

.method public bridge synthetic getOrdering()Ljava/util/List;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->getOrdering()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/hats20/model/Question;->questionText:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->answers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->ordering:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "QuestionMultipleSelect{questionText="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", answers="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ordering="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 62
    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->answers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 63
    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->ordering:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 64
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/Question;->questionText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
