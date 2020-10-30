.class public final synthetic Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$qilQ0PTOWP8wkTBRozP-qJ2woo0;
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

    iput-object p1, p0, Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$qilQ0PTOWP8wkTBRozP-qJ2woo0;->f$0:Lorg/wikipedia/wiktionary/WiktionaryDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$qilQ0PTOWP8wkTBRozP-qJ2woo0;->f$0:Lorg/wikipedia/wiktionary/WiktionaryDialog;

    check-cast p1, Lorg/wikipedia/dataclient/restbase/RbDefinition;

    invoke-virtual {v0, p1}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->lambda$loadDefinitions$0$WiktionaryDialog(Lorg/wikipedia/dataclient/restbase/RbDefinition;)V

    return-void
.end method
