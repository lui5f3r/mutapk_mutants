.class public final synthetic Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$LBTCHRIQv2G9yjJH3AF0i5SB0bw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/wiktionary/WiktionaryDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/wiktionary/WiktionaryDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$LBTCHRIQv2G9yjJH3AF0i5SB0bw;->f$0:Lorg/wikipedia/wiktionary/WiktionaryDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$LBTCHRIQv2G9yjJH3AF0i5SB0bw;->f$0:Lorg/wikipedia/wiktionary/WiktionaryDialog;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->lambda$loadDefinitions$1$WiktionaryDialog(Ljava/lang/Throwable;)V

    return-void
.end method
