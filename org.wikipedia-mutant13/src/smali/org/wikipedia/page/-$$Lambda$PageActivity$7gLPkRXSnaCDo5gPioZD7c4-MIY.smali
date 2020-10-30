.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageActivity$7gLPkRXSnaCDo5gPioZD7c4-MIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$7gLPkRXSnaCDo5gPioZD7c4-MIY;->f$0:Lorg/wikipedia/page/PageActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$7gLPkRXSnaCDo5gPioZD7c4-MIY;->f$0:Lorg/wikipedia/page/PageActivity;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->lambda$loadNewLanguageMainPage$4$PageActivity()V

    return-void
.end method
