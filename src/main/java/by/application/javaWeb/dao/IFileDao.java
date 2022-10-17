package by.application.javaWeb.dao;


import by.application.javaWeb.model.file.FileEntity;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Marcio Ballem on 16/04/2014.
 */
public interface IFileDao<T extends Serializable> {

    void save(FileEntity entity);

    List<FileEntity> findAll();

    FileEntity find(String year, String month, String name);
}
