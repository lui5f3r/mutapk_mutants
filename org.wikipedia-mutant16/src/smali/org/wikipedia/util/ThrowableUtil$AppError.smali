.class public Lorg/wikipedia/util/ThrowableUtil$AppError;
.super Ljava/lang/Object;
.source "ThrowableUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/util/ThrowableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppError"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private detail:Ljava/lang/String;

.field private error:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/wikipedia/util/ThrowableUtil$AppError;->error:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/wikipedia/util/ThrowableUtil$AppError;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/wikipedia/util/ThrowableUtil$AppError;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/wikipedia/util/ThrowableUtil$AppError;->error:Ljava/lang/String;

    return-object v0
.end method
