.class Lorg/wikipedia/edit/EditAbuseFilterResult;
.super Lorg/wikipedia/edit/EditResult;
.source "EditAbuseFilterResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/edit/EditAbuseFilterResult;",
            ">;"
        }
    .end annotation
.end field

.field static final TYPE_ERROR:I = 0x2

.field static final TYPE_WARNING:I = 0x1


# instance fields
.field private final code:Ljava/lang/String;

.field private final info:Ljava/lang/String;

.field private final warning:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lorg/wikipedia/edit/EditAbuseFilterResult$1;

    invoke-direct {v0}, Lorg/wikipedia/edit/EditAbuseFilterResult$1;-><init>()V

    sput-object v0, Lorg/wikipedia/edit/EditAbuseFilterResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/EditResult;-><init>(Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->code:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->info:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->warning:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/wikipedia/edit/EditAbuseFilterResult$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/EditAbuseFilterResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Failure"

    .line 17
    invoke-direct {p0, v0}, Lorg/wikipedia/edit/EditResult;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->code:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->info:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->warning:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 3

    .line 50
    iget-object v0, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "abusefilter-warning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->code:Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const-string v2, "abusefilter-disallowed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 54
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->info:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "Hit AbuseFilter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    return v1
.end method

.method public getWarning()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->warning:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lorg/wikipedia/edit/EditResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    iget-object p2, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->info:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lorg/wikipedia/edit/EditAbuseFilterResult;->warning:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
