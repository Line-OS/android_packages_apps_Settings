.class public Lcom/google/android/material/picker/MonthInYear;
.super Ljava/lang/Object;
.source "MonthInYear.java"


# instance fields
.field public final daysInMonth:I

.field public final daysInWeek:I

.field public final month:I

.field private final monthInYear:Ljava/util/Calendar;

.field public final year:I


# direct methods
.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    .line 39
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/MonthInYear;->month:I

    .line 41
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/MonthInYear;->year:I

    .line 42
    iget-object p1, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    .line 43
    iget-object p1, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    return-void
.end method

.method public static create(II)Lcom/google/android/material/picker/MonthInYear;
    .locals 2

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 57
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 58
    new-instance p0, Lcom/google/android/material/picker/MonthInYear;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/MonthInYear;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method


# virtual methods
.method public daysFromStartOfWeekToFirstOfMonth()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 64
    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/picker/MonthInYear;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 91
    :cond_1
    check-cast p1, Lcom/google/android/material/picker/MonthInYear;

    .line 92
    iget v1, p0, Lcom/google/android/material/picker/MonthInYear;->month:I

    iget v3, p1, Lcom/google/android/material/picker/MonthInYear;->month:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->year:I

    iget p1, p1, Lcom/google/android/material/picker/MonthInYear;->year:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDay(I)Ljava/util/Calendar;
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYear;->monthInYear:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x5

    .line 79
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    iget v1, p0, Lcom/google/android/material/picker/MonthInYear;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->year:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 98
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
