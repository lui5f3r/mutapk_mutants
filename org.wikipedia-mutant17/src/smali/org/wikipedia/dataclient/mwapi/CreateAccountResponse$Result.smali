.class public Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;
.super Ljava/lang/Object;
.source "CreateAccountResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public message()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;->message:Ljava/lang/String;

    return-object v0
.end method

.method public status()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;->status:Ljava/lang/String;

    return-object v0
.end method

.method public user()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;->username:Ljava/lang/String;

    return-object v0
.end method
