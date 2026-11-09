.class Ldev/duo/icons/e$a$b;
.super Ljava/util/zip/InflaterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/icons/e$a;->a(Ldev/duo/icons/e$a$c;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/zip/Inflater;

.field final synthetic b:Ldev/duo/icons/e$a;


# direct methods
.method constructor <init>(Ldev/duo/icons/e$a;Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/Inflater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/icons/e$a$b;->b:Ldev/duo/icons/e$a;

    iput-object p5, p0, Ldev/duo/icons/e$a$b;->a:Ljava/util/zip/Inflater;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    iget-object v0, p0, Ldev/duo/icons/e$a$b;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-void
.end method
