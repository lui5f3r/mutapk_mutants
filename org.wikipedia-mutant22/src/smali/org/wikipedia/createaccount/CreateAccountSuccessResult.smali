.class public final Lorg/wikipedia/createaccount/CreateAccountSuccessResult;
.super Lorg/wikipedia/createaccount/CreateAccountResult;
.source "CreateAccountSuccessResult.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/createaccount/CreateAccountSuccessResult$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final message:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult$Creator;

    invoke-direct {v0}, Lorg/wikipedia/createaccount/CreateAccountSuccessResult$Creator;-><init>()V

    sput-object v0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lorg/wikipedia/createaccount/CreateAccountResult;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->username:Ljava/lang/String;

    const-string p1, "PASS"

    .line 10
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->status:Ljava/lang/String;

    const-string p1, "Account created"

    .line 12
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->message:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lorg/wikipedia/createaccount/CreateAccountSuccessResult;Ljava/lang/String;ILjava/lang/Object;)Lorg/wikipedia/createaccount/CreateAccountSuccessResult;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->username:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->copy(Ljava/lang/String;)Lorg/wikipedia/createaccount/CreateAccountSuccessResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getMessage$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStatus$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lorg/wikipedia/createaccount/CreateAccountSuccessResult;
    .locals 1

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;

    invoke-direct {v0, p1}, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;

    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->username:Ljava/lang/String;

    iget-object p1, p1, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->username:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateAccountSuccessResult(username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
